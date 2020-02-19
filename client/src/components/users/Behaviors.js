import React from 'react';
import  Card  from 'react-bootstrap/Card';

const Behaviors = ({behaviors, conditions}) => {
  return (
    <div className="BehaviorPanel">
      {behaviors.map(behavior =>
        <Card key={behavior.id}>
            <Card.Title>{behavior.name}</Card.Title>
            <Card.Body>
            <p>{behavior.details}</p>
            <p>The following are the common symptoms we track:</p>
            {behavior.conditions.map(id =>
              <ul key={id}>
                <li key={id}>{conditions[id].name}</li>
              </ul>
            )}
            </Card.Body>
        </Card>
      )}
    </div>
  )
};

export default Behaviors;
